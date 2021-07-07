package spring.vojin.springdemo.validation;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode,String > {

	public String coursePrefix;
	@Override
	public boolean isValid(String theCode, ConstraintValidatorContext theConstraintValidatorContext) {
		// TODO Auto-generated method stub
		
		boolean result = theCode.startsWith(coursePrefix);
		
		return result;
	}
	@Override
	public void initialize(CourseCode theCourseCode)
	{
		coursePrefix=theCourseCode.value();
		
	}

}
