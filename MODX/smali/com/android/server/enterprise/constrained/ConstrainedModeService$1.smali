.class public final Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/constrained/ConstrainedModeService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;->this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 13
    iget-object p0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;->this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getConstrainedStateAll()Ljava/util/List;

    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 21
    check-cast p1, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_1

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lcom/samsung/android/knox/EnrollData;

    .line 39
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    move-object v0, p0

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnrollData;->getComment()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnrollData;->getDownloadUrl()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    const/4 v5, 0x1

    .line 74
    move-object v0, p0

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method
