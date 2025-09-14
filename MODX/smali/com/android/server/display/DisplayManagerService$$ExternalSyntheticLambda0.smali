.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/Display$Mode;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/Display$Mode;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/view/Display$Mode;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/view/Display$Mode;

    .line 5
    check-cast p1, Lcom/android/server/display/DisplayDevice;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
