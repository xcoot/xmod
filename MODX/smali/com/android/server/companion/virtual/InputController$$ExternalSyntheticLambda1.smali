.class public final synthetic Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/companion/virtual/InputController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/InputController;

    .line 5
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    iput p4, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    iput-object p5, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/InputController;

    .line 8
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 10
    iget v2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$2:I

    .line 12
    iget v3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$3:I

    .line 14
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 16
    iget-object v0, v0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {v2, v3, v1, p0}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputDpad(IILjava/lang/String;Ljava/lang/String;)J

    .line 24
    move-result-wide v0

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/InputController;

    .line 32
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 34
    iget v2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$2:I

    .line 36
    iget v3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$3:I

    .line 38
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 40
    iget-object v0, v0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {v2, v3, v1, p0}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputMouse(IILjava/lang/String;Ljava/lang/String;)J

    .line 48
    move-result-wide v0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/InputController;

    .line 56
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 58
    iget v2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$2:I

    .line 60
    iget v3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$3:I

    .line 62
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 64
    iget-object v0, v0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-static {v2, v3, v1, p0}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputKeyboard(IILjava/lang/String;Ljava/lang/String;)J

    .line 72
    move-result-wide v0

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
