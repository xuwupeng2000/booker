module ApplicationHelper
  def flash_key_mapping(key)
    mapping = {
      notice: "alert-success",
      success: "alert-success",
      error: "alert-danger",
      alert: "alert-danger",
    }

    mapping[key.to_sym]
  end
end
