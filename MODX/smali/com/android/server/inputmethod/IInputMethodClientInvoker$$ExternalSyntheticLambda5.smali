.class public final synthetic Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/InputBindResult;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 5
    iput-object p2, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/inputmethod/InputBindResult;

    .line 7
    iput p3, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$2:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 8
    iget-object v1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/inputmethod/InputBindResult;

    .line 10
    iget p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$2:I

    .line 12
    invoke-virtual {v0, v1, p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 18
    iget-object v1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/inputmethod/InputBindResult;

    .line 20
    iget p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$2:I

    .line 22
    invoke-virtual {v0, v1, p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onStartInputResultInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
