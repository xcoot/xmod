.class public abstract Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static renderBitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 10
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 12
    const/16 v2, 0x64

    .line 14
    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static renderDrawableToByteArray(Landroid/graphics/drawable/Drawable;)[B
    .locals 5

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 3
    const/16 v1, 0x100

    .line 5
    if-eqz v0, :cond_2

    .line 7
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 16
    move-result v0

    .line 17
    if-gt v0, v1, :cond_1

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 22
    move-result v0

    .line 23
    if-le v0, v1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p0}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 32
    invoke-static {p0, v1, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    return-object v0

    .line 44
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 46
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 49
    move-result-object v0

    .line 50
    :try_start_0
    new-instance v1, Landroid/graphics/Canvas;

    .line 52
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 58
    move-result v2

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 62
    move-result v3

    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    invoke-static {v0}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    .line 73
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    return-object p0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    throw p0
.end method
