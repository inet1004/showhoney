package co.fin.core.kbk.booth.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import co.fin.core.kbk.booth.vo.BoothService;
import co.fin.core.kbk.booth.vo.BoothVo;
import co.fin.core.kbk.booth.vo.ProductVo;

@Service("boothService")
public class BoothServiceImpl implements BoothService {

	@Autowired
	private BoothMapper dao;

	@Override
	public List<BoothVo> bgetSelectBoothList(BoothVo bvo) {
		return dao.bgetSelectBoothList(bvo);

	}

	@Override
	public void boothInsert(BoothVo bvo, ProductVo pvo, HttpServletRequest request)
			throws IllegalStateException, IOException {
		MultipartFile booth_uploadFile = bvo.getBooth_uploadfile();
		MultipartFile brochure_uploadfile = bvo.getBrochure_uploadfile();
		String booth_path = request.getSession().getServletContext().getRealPath("/resources/FileUpload/boothProfile");
		String bro_path = request.getSession().getServletContext().getRealPath("/resources/FileUpload/brochure");
		
		if (!booth_uploadFile.isEmpty()) {
			String booth_fileName = booth_uploadFile.getOriginalFilename();
			booth_uploadFile.transferTo(new File(booth_path, booth_fileName));
			bvo.setBooth_profile(booth_fileName);

		}

		if (!brochure_uploadfile.isEmpty()) {
			String bro_fileName = brochure_uploadfile.getOriginalFilename();
			brochure_uploadfile.transferTo(new File(bro_path, bro_fileName));
			bvo.setBrochure_path(bro_fileName);
		}
		
//		bvo.setExhibition_no(82);
//		bvo.setCompany_no(258); // TODO 수정필요
		dao.boothInsert(bvo);

		MultipartFile[] product_uploadfile = bvo.getProduct_uploadfile();
		String ppath = request.getSession().getServletContext().getRealPath("/resources/FileUpload/product");
		for (int i = 0; i < product_uploadfile.length; i++) {

			if (!product_uploadfile[i].isEmpty()) {
				String pfileName = product_uploadfile[i].getOriginalFilename();
				product_uploadfile[i].transferTo(new File(ppath, pfileName));

				pvo.setProduct_name(bvo.getProduct_name()[i]);
				pvo.setProduct_desc(bvo.getProduct_desc()[i]);
				pvo.setProduct_image_path(pfileName);
//				pvo.setProduct_mall(bvo.getProduct_mall());
				pvo.setBooth_no(bvo.getBooth_no());
				dao.productInsert(pvo);
			}
		}

	}
	
	@Override
	public void boothUpdate(BoothVo bvo, ProductVo pvo, HttpServletRequest request)
			throws IllegalStateException, IOException {

		MultipartFile booth_uploadFile = bvo.getBooth_uploadfile();
		MultipartFile brochure_uploadfile = bvo.getBrochure_uploadfile();
		String booth_path = request.getSession().getServletContext().getRealPath("/resources/FileUpload/boothProfile");
		String bro_path = request.getSession().getServletContext().getRealPath("/resources/FileUpload/brochure");

		if (!booth_uploadFile.isEmpty()) {
			String booth_fileName = booth_uploadFile.getOriginalFilename();
			booth_uploadFile.transferTo(new File(booth_path, booth_fileName));
			bvo.setBooth_profile(booth_fileName);

		}

		if (!brochure_uploadfile.isEmpty()) {
			String bro_fileName = brochure_uploadfile.getOriginalFilename();
			brochure_uploadfile.transferTo(new File(bro_path, bro_fileName));
			bvo.setBrochure_path(bro_fileName);
		}

//		bvo.setExhibition_no(82);
//		bvo.setCompany_no(258); // TODO 수정필요
		dao.boothUpdate(bvo);

}

	@Override
	public void boothDelete(BoothVo bvo, ProductVo pvo, HttpServletRequest request) throws IllegalStateException, IOException {
				
		dao.boothDelete(bvo);

	}

	@Override
	public List<ProductVo> getSelectList(ProductVo pvo) {
		// TODO Auto-generated method stub
		return dao.getSelectList(pvo);
	}

	@Override
	public ProductVo getSelect(ProductVo pvo) {
		// TODO Auto-generated method stub
		return dao.getSelect(pvo);
	}

	@Override
	public void productInsert(ProductVo pvo, HttpServletRequest request) throws IOException {
		
		MultipartFile product_uploadfile = pvo.getProduct_uploadfile();
		String ppath = request.getSession().getServletContext().getRealPath("/resources/FileUpload/product");

			if (product_uploadfile != null && !product_uploadfile.isEmpty()) {
				String pfileName = product_uploadfile.getOriginalFilename();
				product_uploadfile.transferTo(new File(ppath, pfileName));
				pvo.setProduct_image_path(pfileName);
			}
			
		dao.productInsert(pvo);
	}

	@Override
	public void productUpdate(BoothVo bvo, ProductVo pvo, HttpServletRequest request) throws IllegalStateException, IOException {
		MultipartFile product_uploadfile = pvo.getProduct_uploadfile();
		String ppath = request.getSession().getServletContext().getRealPath("/resources/FileUpload/product");

			if (product_uploadfile != null && !product_uploadfile.isEmpty()) {
				String pfileName = product_uploadfile.getOriginalFilename();
				product_uploadfile.transferTo(new File(ppath, pfileName));
				pvo.setProduct_image_path(pfileName);
			}
			
			//pvo.setProduct_name(bvo.getProduct_name()[i]);
			//pvo.setProduct_desc(bvo.getProduct_desc()[i]);
			//pvo.setBooth_no(bvo.getBooth_no());
			dao.productUpdate(pvo);
		
	}

	@Override
	public void productDelete(ProductVo pvo, BoothVo bvo, HttpServletRequest request) throws IllegalStateException, IOException {
		// TODO Auto-generated method stub
		dao.productDelete(pvo);
		
	
	}
	
	@Override
	public List<BoothVo> getSelectCustomerBoothList(BoothVo bvo) {
		return dao.getSelectCustomerBoothList(bvo);
		
	}


	@Override
	public int ticketCheck(BoothVo bvo) {		
		return dao.ticketCheck(bvo);
	}

	@Override
	public BoothVo getSelectCompanyNo(BoothVo bvo) {
		return dao.getSelectCompanyNo(bvo);
		
	}

}
