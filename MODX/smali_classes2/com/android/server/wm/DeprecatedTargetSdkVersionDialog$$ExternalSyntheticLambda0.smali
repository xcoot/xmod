.class public final synthetic Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroid/content/Context;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/content/Intent;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/android/server/wm/AppWarnings;

    .line 25
    .line 26
    iget p2, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    const/4 v1, 0x1

    .line 30
    iget-object p1, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(IILjava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
