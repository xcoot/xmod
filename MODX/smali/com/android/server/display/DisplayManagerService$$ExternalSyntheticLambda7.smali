.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;[II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;->f$1:[I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;->f$1:[I

    .line 10
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 24
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;->f$1:[I

    .line 26
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {p1, p0}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    .line 34
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
