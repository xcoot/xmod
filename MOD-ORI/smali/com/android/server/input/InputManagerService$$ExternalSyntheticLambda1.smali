.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;->f$0:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;->f$0:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 11
    .line 12
    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mousePointerAccelerationEnabled:Z

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 16
    .line 17
    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
