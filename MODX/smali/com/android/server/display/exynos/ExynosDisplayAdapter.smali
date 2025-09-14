.class public final Lcom/android/server/display/exynos/ExynosDisplayAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mSysfsPath:Ljava/lang/String;

.field public mXmlPath:Ljava/lang/String;


# direct methods
.method public static sendEmptyUpdate()V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "SurfaceFlinger"

    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "android.ui.ISurfaceComposer"

    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    const/16 v3, 0x3ee

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-interface {v0, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const-string v0, "ExynosDisplayAdapter"

    .line 34
    const-string/jumbo v1, "failed to sendEmptyUpdate"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    :goto_0
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public static write(Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 6
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 8
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return v1
.end method


# virtual methods
.method public final getDqePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ".xml"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->mXmlPath:Ljava/lang/String;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->mSysfsPath:Ljava/lang/String;

    .line 14
    :goto_0
    const-string v0, "/"

    .line 16
    invoke-static {p0, v0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
