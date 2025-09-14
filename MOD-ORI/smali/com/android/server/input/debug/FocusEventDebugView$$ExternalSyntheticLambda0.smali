.class public final synthetic Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/debug/FocusEventDebugView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/debug/FocusEventDebugView;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->f$1:Z

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->f$1:Z

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/android/server/input/debug/FocusEventDebugView;->handleUpdateShowRotaryInput(Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 15
    .line 16
    iget-boolean p0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->f$1:Z

    .line 17
    .line 18
    invoke-static {v0, p0}, Lcom/android/server/input/debug/FocusEventDebugView;->$r8$lambda$NOfikC3SqQwvKrlgqWnqfisz50A(Lcom/android/server/input/debug/FocusEventDebugView;Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
