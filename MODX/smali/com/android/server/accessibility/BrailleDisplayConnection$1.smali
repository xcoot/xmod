.class public final Lcom/android/server/accessibility/BrailleDisplayConnection$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$nativeInterface:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    .line 17
    move-result p0

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    goto :goto_0

    .line 35
    :catchall_1
    move-exception p1

    .line 36
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 40
    :catch_0
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method


# virtual methods
.method public final getDeviceBusType(Ljava/nio/file/Path;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    .line 8
    check-cast p0, Ljava/util/Map;

    .line 10
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/os/Bundle;

    .line 16
    const-string p1, "BUS_BLUETOOTH"

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    const/4 p0, 0x5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x3

    .line 27
    :goto_0
    return p0

    .line 28
    :pswitch_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    .line 33
    check-cast p0, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    .line 35
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;

    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;I)V

    .line 44
    invoke-static {p1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/Integer;

    .line 50
    if-eqz p0, :cond_1

    .line 52
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 55
    move-result p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 p0, -0x1

    .line 58
    :goto_1
    return p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getDeviceReportDescriptor(Ljava/nio/file/Path;)[B
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    .line 8
    check-cast p0, Ljava/util/Map;

    .line 10
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/os/Bundle;

    .line 16
    const-string p1, "DESCRIPTOR"

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;

    .line 28
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    .line 30
    check-cast p0, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;I)V

    .line 36
    invoke-static {p1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    check-cast p0, [B

    .line 42
    return-object p0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getHidrawNodePaths(Ljava/nio/file/Path;)Ljava/util/Collection;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    .line 8
    check-cast p1, Ljava/util/Map;

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 16
    const/4 p0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    .line 20
    check-cast p0, Ljava/util/Map;

    .line 22
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 25
    move-result-object p0

    .line 26
    :goto_0
    return-object p0

    .line 27
    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    :try_start_0
    const-string/jumbo v0, "hidraw*"

    .line 35
    invoke-static {p1, v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    .line 38
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v0

    .line 43
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/nio/file/Path;

    .line 55
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    goto :goto_4

    .line 65
    :goto_2
    if-eqz p1, :cond_2

    .line 67
    :try_start_3
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    goto :goto_3

    .line 71
    :catchall_1
    move-exception p1

    .line 72
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    :cond_2
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 76
    :catch_0
    const/4 p0, 0x0

    .line 77
    :goto_4
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getName(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    .line 8
    check-cast p0, Ljava/util/Map;

    .line 10
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/os/Bundle;

    .line 16
    const-string p1, "NAME"

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    .line 28
    check-cast p0, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    .line 30
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;I)V

    .line 39
    invoke-static {p1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/String;

    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getUniqueId(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    .line 8
    check-cast p0, Ljava/util/Map;

    .line 10
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/os/Bundle;

    .line 16
    const-string p1, "UNIQUE_ID"

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    .line 28
    check-cast p0, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    .line 30
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;

    .line 35
    const/4 v1, 0x3

    .line 36
    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;I)V

    .line 39
    invoke-static {p1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/String;

    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
