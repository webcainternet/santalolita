<div id="banner<?php echo $module; ?>" class="banner span5">
  <?php foreach ($banners as $banner) { ?>
  <?php if ($banner['link']) { ?>
  <div><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /><div class="s-desc"><?php echo $banner['description']; ?></div></a></div>
  <?php } else { ?>
  <div><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /><div class="s-desc"><?php echo $banner['description']; ?></div></div>
  <?php } ?>
  <?php } ?>
</div>