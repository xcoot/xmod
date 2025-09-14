.class public final synthetic Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;
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

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;III)V
    .locals 0

    .line 1
    iput p8, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/companion/virtual/InputController;

    .line 5
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$2:I

    .line 9
    iput p4, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$3:I

    .line 11
    iput-object p5, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    .line 13
    iput p6, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$5:I

    .line 15
    iput p7, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$6:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/companion/virtual/InputController;

    .line 8
    iget-object v4, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 10
    iget v1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$2:I

    .line 12
    iget v2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$3:I

    .line 14
    iget-object v5, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    .line 16
    iget v3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$5:I

    .line 18
    iget v6, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$6:I

    .line 20
    iget-object p0, v0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputStylus(IIILjava/lang/String;Ljava/lang/String;I)J

    .line 28
    move-result-wide v0

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/companion/virtual/InputController;

    .line 36
    iget-object v4, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 38
    iget v1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$2:I

    .line 40
    iget v2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$3:I

    .line 42
    iget-object v5, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    .line 44
    iget v3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$5:I

    .line 46
    iget v6, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$6:I

    .line 48
    iget-object p0, v0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputTouchscreen(IIILjava/lang/String;Ljava/lang/String;I)J

    .line 56
    move-result-wide v0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/companion/virtual/InputController;

    .line 64
    iget-object v4, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 66
    iget v1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$2:I

    .line 68
    iget v2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$3:I

    .line 70
    iget-object v5, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    .line 72
    iget v3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$5:I

    .line 74
    iget v6, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;->f$6:I

    .line 76
    iget-object p0, v0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-static/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputTouchscreen(IIILjava/lang/String;Ljava/lang/String;I)J

    .line 84
    move-result-wide v0

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
