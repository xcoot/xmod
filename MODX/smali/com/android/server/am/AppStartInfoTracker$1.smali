.class public final Lcom/android/server/am/AppStartInfoTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/AppStartInfoTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppStartInfoTracker;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/AppStartInfoTracker$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$1;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/server/am/AppStartInfoTracker$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    const-string p1, "android.intent.extra.REPLACING"

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "android.intent.extra.UID"

    .line 18
    const/16 v1, -0x2710

    .line 20
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 23
    move-result p1

    .line 24
    const-string v1, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    .line 26
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 29
    move-result v0

    .line 30
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$1;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/am/AppStartInfoTracker;->onPackageRemoved(Ljava/lang/String;IZ)V

    .line 43
    :goto_0
    return-void

    .line 44
    :pswitch_0
    const-string p1, "android.intent.extra.user_handle"

    .line 46
    const/4 v0, -0x1

    .line 47
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 50
    move-result p1

    .line 51
    const/4 p2, 0x1

    .line 52
    if-ge p1, p2, :cond_1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$1;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->onUserRemoved(I)V

    .line 60
    :goto_1
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
