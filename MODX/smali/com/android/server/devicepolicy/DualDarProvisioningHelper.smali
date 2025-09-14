.class public final Lcom/android/server/devicepolicy/DualDarProvisioningHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static isDualDARConfigured(Landroid/content/Context;Landroid/os/PersistableBundle;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "DualDarProvisioningHelper"

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const-string/jumbo v2, "dualdar-config"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    const-string/jumbo p0, "isDualDARConfigured from provisioning params"

    .line 18
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return v0

    .line 22
    :cond_0
    const-string/jumbo p1, "persona"

    .line 25
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 31
    if-eqz p0, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getDualDARProfile()Landroid/os/Bundle;

    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    :goto_0
    if-eqz p0, :cond_2

    .line 41
    const-string/jumbo p0, "isDualDARConfigured from preset params"

    .line 44
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return v0

    .line 48
    :cond_2
    const/4 p0, 0x0

    .line 49
    return p0
.end method
