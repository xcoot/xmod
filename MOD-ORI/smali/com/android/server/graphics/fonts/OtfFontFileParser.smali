.class public final Lcom/android/server/graphics/fonts/OtfFontFileParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static buildFontFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-static {p0, v0}, Landroid/graphics/fonts/FontFileUtil;->getPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {p0, v0}, Landroid/graphics/fonts/FontFileUtil;->isPostScriptType1Font(Ljava/nio/ByteBuffer;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {p0}, Landroid/graphics/fonts/FontFileUtil;->isCollectionFont(Ljava/nio/ByteBuffer;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_4

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    if-eq v0, v3, :cond_4

    .line 26
    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v3, 0x1

    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    if-ne v0, v3, :cond_1

    .line 34
    .line 35
    const-string v0, ".otc"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const-string v0, ".ttc"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    if-ne v0, v3, :cond_3

    .line 44
    .line 45
    const-string v0, ".otf"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const-string v0, ".ttf"

    .line 49
    .line 50
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    return-object p0

    .line 74
    :goto_2
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    .line 75
    .line 76
    .line 77
    throw v0
.end method

.method public static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 7

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception v0

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    throw p0
.end method

.method public static tryToCreateTypeface(Ljava/io/File;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Landroid/graphics/fonts/FontFamily$Builder;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Landroid/text/TextPaint;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 35
    .line 36
    .line 37
    const/high16 v2, 0x41c00000    # 24.0f

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 43
    .line 44
    .line 45
    const-string v0, "abcXYZ@- \ud83e\uded6\ud83c\uddfa\ud83c\uddf8\ud83d\udc8f\ud83c\udffb\ud83d\udc68\ud83c\udffc\u200d\u2764\ufe0f\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    .line 46
    .line 47
    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    float-to-double v2, v2

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    double-to-int v2, v2

    .line 57
    const/4 v3, 0x0

    .line 58
    const/16 v4, 0x22

    .line 59
    .line 60
    invoke-static {v0, v3, v4, v1, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 77
    .line 78
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v2, Landroid/graphics/Canvas;

    .line 83
    .line 84
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    .line 96
    .line 97
    .line 98
    throw v0
.end method

.method public static unmap(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
