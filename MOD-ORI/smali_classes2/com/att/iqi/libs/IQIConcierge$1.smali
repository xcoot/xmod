.class Lcom/att/iqi/libs/IQIConcierge$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/libs/IQIConcierge;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIConcierge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/libs/IQIConcierge$1;->this$0:Lcom/att/iqi/libs/IQIConcierge;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "com.att.iqi.action.ACTION_MCC_MNC_VALIDATION_STATE_CHANGED"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-string p0, "disabled"

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "disable_mcc_mnc_validation"

    .line 25
    .line 26
    invoke-virtual {p1, p2, p0}, Lcom/att/iqi/libs/PreferenceStore;->setBoolean(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
