package controllers

import play.api.mvc.Controller
import models.{City, Pic, Scenic, Area}
import play.api.mvc.Action
import play.api.libs.json._
/**
 * Created by baraka on 15-1-17.
 */

object ScenicController extends Controller {

  implicit val AreaFormat = Json.format[Area]

  implicit val scenicFormat = Json.format[Scenic]

  implicit val picFormat = Json.format[Pic]

  implicit val cityFormat = Json.format[City]

  def listAreas = Action {
    implicit request =>
      val list = Area.allAreas
      val json = Json.toJson(list)
      Ok(json).as("application/json")
  }

  def listCities = Action {
    implicit request =>
      val list = City.allCities
      val json = Json.toJson(list)
      Ok(json).as("application/json")
  }

  def listScenics(id:Int) = Action {
    implicit request =>
      val list = Scenic.allScenic(id)
      val json = Json.toJson(list)
      Ok(json).as("application/json")
  }

  def listScenicsByType(id:Int) = Action {
    implicit request =>
      val list = Scenic.scenicByType(id)
      val json = Json.toJson(list)
      Ok(json).as("application/json")
  }

  def listPics(id:Int) = Action {
    implicit request =>
      val list = Pic.allPics(id)
      val json = Json.toJson(list)
      Ok(json).as("application/json")
  }
}
