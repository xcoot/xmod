.class public final Lcom/android/server/connectivity/VpnProfileStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public get(Ljava/lang/String;)[B
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public put(Ljava/lang/String;[B)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/security/LegacyVpnProfileStore;->put(Ljava/lang/String;[B)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->remove(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
