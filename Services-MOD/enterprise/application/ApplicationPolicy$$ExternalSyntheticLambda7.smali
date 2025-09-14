.class public final synthetic Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v2, "ApplicationPolicy"

    .line 11
    if-eqz v0, :cond_1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v0, v1, :cond_0

    .line 16
    move v1, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 22
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_3

    .line 32
    array-length v4, v0

    .line 33
    move v5, v3

    .line 34
    :goto_0
    if-ge v5, v4, :cond_3

    .line 36
    aget v6, v0, v5

    .line 38
    invoke-virtual {p0, v6, v3, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateRuntimePermissions(IILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    add-int/lit8 v5, v5, 0x1

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    const-string v0, "Granting runtime permissions failed "

    .line 49
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {p0, p1, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    check-cast v0, Ljava/lang/String;

    .line 60
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->verifyRuntimePermissionPackageSignature(Ljava/lang/String;)Z

    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 68
    const/4 v2, 0x2

    .line 69
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateRuntimePermissions(IILjava/lang/String;)Z

    .line 72
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateRuntimePermissions(IILjava/lang/String;)Z

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const-string p0, "Package Signature Mismatch for setRuntimePermissions "

    .line 78
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_3
    :goto_1
    return v1
.end method
