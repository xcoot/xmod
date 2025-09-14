.class public final Lcom/android/server/wm/SensitiveContentPackages;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mProtectedPackages:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "SensitiveContentPackages:"

    .line 2
    .line 3
    const-string v1, "  Packages that should block screen capture ("

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "):"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "    package="

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, "  uid="

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v2, v0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, " windowToken="

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v0, v0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public final shouldBlockScreenCaptureForApp(ILandroid/os/IBinder;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/flags/Flags;->sensitiveContentAppProtection()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveNotificationAppProtection()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v0, v2, :cond_4

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    iget-object v3, v2, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    iget v3, v2, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    .line 43
    .line 44
    if-ne v3, p1, :cond_3

    .line 45
    .line 46
    invoke-static {}, Landroid/view/flags/Flags;->sensitiveContentAppProtection()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    iget-object v3, v2, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    .line 53
    .line 54
    if-eq p2, v3, :cond_2

    .line 55
    .line 56
    :cond_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveNotificationAppProtection()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    iget-object v2, v2, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    :cond_2
    const/4 p0, 0x1

    .line 67
    return p0

    .line 68
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    return v1
.end method

.method public size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
