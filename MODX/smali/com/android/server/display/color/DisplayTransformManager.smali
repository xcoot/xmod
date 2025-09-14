.class public final Lcom/android/server/display/color/DisplayTransformManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final PERSISTENT_PROPERTY_COMPOSITION_COLOR_MODE:Ljava/lang/String; = "persist.sys.sf.color_mode"

.field static final PERSISTENT_PROPERTY_DISPLAY_COLOR:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field static final PERSISTENT_PROPERTY_SATURATION:Ljava/lang/String; = "persist.sys.sf.color_saturation"

.field public static final sFlinger:Landroid/os/IBinder;


# instance fields
.field public final mColorMatrix:Landroid/util/SparseArray;

.field mDaltonizerLevel:I

.field mDaltonizerMode:I

.field final mDaltonizerModeLock:Ljava/lang/Object;

.field public final mTempColorMatrix:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SurfaceFlinger"

    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v1, v0, [I

    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0x10

    .line 18
    aput v3, v1, v2

    .line 20
    const/4 v2, 0x0

    .line 21
    aput v0, v1, v2

    .line 23
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 25
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, [[F

    .line 31
    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 33
    new-instance v0, Ljava/lang/Object;

    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    .line 40
    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 43
    iput v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerLevel:I

    .line 45
    return-void
.end method

.method public static applyColorMatrix([F)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.ui.ISurfaceComposer"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    move v2, v1

    .line 18
    :goto_0
    const/16 v3, 0x10

    .line 20
    if-ge v2, v3, :cond_1

    .line 22
    aget v3, p0, v2

    .line 24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    :cond_1
    :try_start_0
    sget-object p0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    .line 35
    const/16 v2, 0x3f7

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    goto :goto_2

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_3

    .line 47
    :catch_0
    move-exception p0

    .line 48
    :try_start_1
    const-string v1, "DisplayTransformManager"

    .line 50
    const-string v2, "Failed to set color transform"

    .line 52
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    goto :goto_1

    .line 56
    :goto_2
    return-void

    .line 57
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    throw p0
.end method

.method public static applySaturation(F)V
    .locals 4

    .line 1
    const-string/jumbo v0, "persist.sys.sf.color_saturation"

    .line 4
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "android.ui.ISurfaceComposer"

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 23
    :try_start_0
    sget-object p0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    .line 25
    const/4 v1, 0x0

    .line 26
    const/16 v2, 0x3fe

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception p0

    .line 39
    :try_start_1
    const-string v1, "DisplayTransformManager"

    .line 41
    const-string v2, "Failed to set saturation"

    .line 43
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    goto :goto_0

    .line 47
    :goto_1
    return-void

    .line 48
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p0
.end method

.method public static setDisplayColor(II)V
    .locals 3

    .line 1
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const/4 v0, -0x1

    .line 12
    if-eq p1, v0, :cond_0

    .line 14
    const-string/jumbo v1, "persist.sys.sf.color_mode"

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 27
    move-result-object v1

    .line 28
    const-string v2, "android.ui.ISurfaceComposer"

    .line 30
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    if-eq p1, v0, :cond_1

    .line 38
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    :cond_1
    :try_start_0
    sget-object p0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    .line 43
    const/4 p1, 0x0

    .line 44
    const/16 v0, 0x3ff

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-interface {p0, v0, v1, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :catch_0
    move-exception p0

    .line 57
    :try_start_1
    const-string p1, "DisplayTransformManager"

    .line 59
    const-string v0, "Failed to set display color"

    .line 61
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    goto :goto_0

    .line 65
    :goto_1
    return-void

    .line 66
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 69
    throw p0
.end method


# virtual methods
.method public final computeColorMatrixLocked()[F
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 13
    const/4 v2, 0x0

    .line 14
    aget-object v3, v1, v2

    .line 16
    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 19
    :goto_0
    if-ge v2, v0, :cond_1

    .line 21
    iget-object v3, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    move-object v8, v3

    .line 28
    check-cast v8, [F

    .line 30
    add-int/lit8 v3, v2, 0x1

    .line 32
    rem-int/lit8 v4, v3, 0x2

    .line 34
    aget-object v4, v1, v4

    .line 36
    rem-int/lit8 v2, v2, 0x2

    .line 38
    aget-object v6, v1, v2

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 46
    move v2, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    rem-int/lit8 v0, v0, 0x2

    .line 50
    aget-object p0, v1, v0

    .line 52
    return-object p0
.end method

.method public final setColorMatrix(I[F)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 3
    array-length v0, p2

    .line 4
    const/16 v1, 0x10

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "Expected length: 16 (4x4 matrix), actual length: "

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    array-length p2, p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, [F

    .line 41
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_4

    .line 47
    if-nez p2, :cond_2

    .line 49
    iget-object p2, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    if-nez v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 61
    array-length v2, p2

    .line 62
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    array-length p1, p2

    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-static {p2, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/color/DisplayTransformManager;->computeColorMatrixLocked()[F

    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Lcom/android/server/display/color/DisplayTransformManager;->applyColorMatrix([F)V

    .line 82
    :cond_4
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final setDaltonizerMode(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 6
    if-ne v1, p1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerLevel:I

    .line 10
    if-eq v1, p2, :cond_1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_4

    .line 15
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 17
    iput p2, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerLevel:I

    .line 19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 22
    move-result-object p0

    .line 23
    const-string v1, "android.ui.ISurfaceComposer"

    .line 25
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    sget-object p1, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    .line 36
    const/4 p2, 0x0

    .line 37
    const/16 v1, 0x3f6

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-interface {p1, v1, p0, v2, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    goto :goto_2

    .line 47
    :catchall_1
    move-exception p1

    .line 48
    goto :goto_3

    .line 49
    :catch_0
    move-exception p1

    .line 50
    :try_start_3
    const-string p2, "DisplayTransformManager"

    .line 52
    const-string v1, "Failed to set Daltonizer mode"

    .line 54
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_2
    :try_start_4
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_3
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 63
    throw p1

    .line 64
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    throw p0
.end method
