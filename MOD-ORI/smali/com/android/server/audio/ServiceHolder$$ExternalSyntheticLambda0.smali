.class public final synthetic Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Landroid/os/IInterface;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/os/IInterface;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;->f$1:Landroid/os/IInterface;

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
    iget v0, p0, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;->f$1:Landroid/os/IInterface;

    .line 9
    .line 10
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;->f$1:Landroid/os/IInterface;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;->f$1:Landroid/os/IInterface;

    .line 25
    .line 26
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
