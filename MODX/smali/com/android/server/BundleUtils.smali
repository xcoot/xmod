.class public abstract Lcom/android/server/BundleUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static clone(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    :goto_0
    return-object v0
.end method

.method public static isEmpty(Landroid/os/Bundle;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method
