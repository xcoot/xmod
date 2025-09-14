.class public final Lcom/android/server/pm/PersonaManagerService$2$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/PersonaManagerService$2;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService$2;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2$2;->this$1:Lcom/android/server/pm/PersonaManagerService$2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2$2;->val$intent:Landroid/content/Intent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2$2;->this$1:Lcom/android/server/pm/PersonaManagerService$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2$2;->val$intent:Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "com.samsung.android.knox.intent.extra.EXTRA_DO_PO_PACKAGE_NAME"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object v0, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const-string v3, "cTp"

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "pN"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p0, "WORK_PROFILE_CREATED"

    .line 50
    .line 51
    invoke-virtual {v0, v2, p0}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    .line 56
    .line 57
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    const-string v1, "WORK_PROFILE_REMOVED"

    .line 68
    .line 69
    invoke-virtual {v0, p0, v1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method
