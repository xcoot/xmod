.class public final synthetic Lcom/android/server/textclassifier/IconsContentProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# instance fields
.field public final synthetic f$0:Lcom/android/server/textclassifier/IconsContentProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/textclassifier/IconsContentProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/textclassifier/IconsContentProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/textclassifier/IconsContentProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/textclassifier/IconsContentProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/textclassifier/IconsContentProvider;

    .line 2
    .line 3
    check-cast p5, Landroid/util/Pair;

    .line 4
    .line 5
    sget p3, Lcom/android/server/textclassifier/IconsContentProvider;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance p3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 11
    .line 12
    invoke-direct {p3, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :try_start_1
    iget-object p1, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;

    .line 18
    .line 19
    iget-object p4, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p4, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    iget-object p5, p1, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->packageName:Ljava/lang/String;

    .line 28
    .line 29
    iget p1, p1, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->id:I

    .line 30
    .line 31
    invoke-static {p5, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p1, p0, p4}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lcom/android/server/textclassifier/IconsContentProvider;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 48
    .line 49
    const/16 p4, 0x64

    .line 50
    .line 51
    invoke-virtual {p0, p1, p4, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    :try_start_2
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_3
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception p1

    .line 66
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string p3, "Error retrieving icon for uri: "

    .line 73
    .line 74
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string p2, "IconsContentProvider"

    .line 85
    .line 86
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :goto_2
    return-void
.end method
