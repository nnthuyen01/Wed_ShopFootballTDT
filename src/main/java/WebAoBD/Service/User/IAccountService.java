package WebAoBD.Service.User;

import org.springframework.stereotype.Service;

import WebAoBD.Entity.User;

@Service
public interface IAccountService {
	public int AddAccount(User user);
	
	public User CheckAccount(User user);

}
