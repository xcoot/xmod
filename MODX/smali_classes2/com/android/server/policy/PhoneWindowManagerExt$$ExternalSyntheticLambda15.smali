.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;->f$1:Landroid/view/KeyEvent;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;->f$1:Landroid/view/KeyEvent;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getEventTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 24
    .line 25
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleLongPressOnHomeWithPolicy(IJ)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;->f$1:Landroid/view/KeyEvent;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/android/server/policy/PhoneWindowManager;->postShortPressOnHome(Landroid/view/KeyEvent;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
