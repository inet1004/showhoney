package co.fin.core.kbk.product.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.swing.DefaultListModel;
import javax.swing.ImageIcon;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.firewall.FirewalledRequest;
import org.springframework.web.multipart.MultipartFile;

import co.fin.core.kbk.product.vo.ProductService;
import co.fin.core.kbk.product.vo.ProductVo;

public class ProductSertviceImpl implements ProductService {

	@Autowired
	private ProductMapper pDao;
	
	@Override
	public List<ProductVo> getSelectList(ProductVo vo) {
		// TODO Auto-generated method stub
		return pDao.getSelectList(vo);
	}

	@Override
	public ProductVo getSelect(ProductVo vo) {
		// TODO Auto-generated method stub
		return pDao.getSelect(vo);
	}

	@Override
	public void productInsert(ProductVo vo, HttpServletRequest request) throws IOException {
		
	}

	@Override
	public void productUpdate(ProductVo vo) {
		pDao.productUpdate(vo);

	}

	@Override
	public void productDelete(ProductVo vo) {
		pDao.productDelete(vo);

	}

}
