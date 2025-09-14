.class public final Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPkg:Ljava/lang/String;

.field public final mUid:I

.field public final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    .line 14
    .line 15
    iget v3, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    .line 16
    .line 17
    if-ne v3, v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    .line 32
    .line 33
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v0, v2

    .line 41
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    .line 10
    .line 11
    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "package="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "  uid="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " windowToken="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
