module ApplicationHelper
  def flash_key_mapping(key)
    mapping = {
      "notice": "alert-success",
      "success": "alert-success",
      "error": "alert-danger",
    }

    mapping[key]
  end
end
