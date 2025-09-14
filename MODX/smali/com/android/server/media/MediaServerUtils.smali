.class public abstract Lcom/android/server/media/MediaServerUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    .line 1
    if-eqz p2, :cond_3

    .line 3
    const/16 v0, 0x7d0

    .line 5
    if-ne p2, v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 14
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 16
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 22
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 25
    move-result v3

    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 29
    const-wide/16 v4, 0x0

    .line 31
    move v2, p2

    .line 32
    move-object v6, p1

    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->isSameApp(IIJLjava/lang/String;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 50
    const-string/jumbo v1, "packageName does not belong to the calling uid; pkg="

    .line 53
    const-string v2, ", uid="

    .line 55
    const-string v3, " ("

    .line 57
    invoke-static {p2, v1, p1, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    const-string p2, ")"

    .line 67
    invoke-static {p1, p0, p2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    throw v0

    .line 75
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 77
    const-string/jumbo p1, "packageName may not be empty"

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0

    .line 84
    :cond_3
    :goto_0
    return-void
.end method
