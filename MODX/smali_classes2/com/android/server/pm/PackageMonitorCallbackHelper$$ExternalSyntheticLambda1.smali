.class public final synthetic Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageMonitorCallbackHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:[I

.field public final synthetic f$3:Landroid/content/Intent;

.field public final synthetic f$4:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageMonitorCallbackHelper;I[ILandroid/content/Intent;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$2:[I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$3:Landroid/content/Intent;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$4:Ljava/util/function/BiFunction;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$2:[I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$3:Landroid/content/Intent;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$4:Ljava/util/function/BiFunction;

    .line 10
    .line 11
    check-cast p1, Landroid/os/IRemoteCallback;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast p2, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;

    .line 17
    .line 18
    iget v0, p2, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUserId:I

    .line 19
    .line 20
    const/4 v4, -0x1

    .line 21
    if-eq v0, v4, :cond_0

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget p2, p2, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUid:I

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x3e8

    .line 31
    .line 32
    if-eq p2, v0, :cond_1

    .line 33
    .line 34
    invoke-static {v2, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-eqz p0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-interface {p0, p2, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Landroid/os/Bundle;

    .line 58
    .line 59
    if-nez p0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    new-instance p2, Landroid/content/Intent;

    .line 63
    .line 64
    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-object v3, p2

    .line 71
    :cond_3
    :try_start_0
    new-instance p0, Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string p2, "android.content.pm.extra.EXTRA_PACKAGE_MONITOR_CALLBACK_RESULT"

    .line 77
    .line 78
    invoke-virtual {p0, p2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, p0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :catch_0
    :goto_0
    return-void
.end method
