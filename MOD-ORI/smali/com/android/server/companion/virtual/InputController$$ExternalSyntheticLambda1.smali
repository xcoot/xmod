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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/InputController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$2:I

    .line 8
    .line 9
    iput p4, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$3:I

    .line 10
    .line 11
    iput-object p5, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/InputController;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$2:I

    .line 11
    .line 12
    iget v3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$3:I

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3, v1, p0}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputDpad(IILjava/lang/String;Ljava/lang/String;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/InputController;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 33
    .line 34
    iget v2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$2:I

    .line 35
    .line 36
    iget v3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$3:I

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3, v1, p0}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputMouse(IILjava/lang/String;Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/InputController;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 57
    .line 58
    iget v2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$2:I

    .line 59
    .line 60
    iget v3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$3:I

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v3, v1, p0}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputKeyboard(IILjava/lang/String;Ljava/lang/String;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
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
