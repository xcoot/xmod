.class public final synthetic Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 9
    .line 10
    check-cast p1, Ljava/util/Map;

    .line 11
    .line 12
    check-cast p2, Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 24
    .line 25
    check-cast p1, Ljava/util/Map;

    .line 26
    .line 27
    check-cast p2, Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
