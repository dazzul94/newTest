package java100.app.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ajax")
@Controller
public class AjaxController {
	
	@RequestMapping("ajaxData")
	public String ajaxData() {
		return "ajax/ajaxData";
	}
}
