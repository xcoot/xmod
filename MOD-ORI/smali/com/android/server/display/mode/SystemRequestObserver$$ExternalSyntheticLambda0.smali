.class public final synthetic Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(I[ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;->f$1:[Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;->f$1:[Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 6
    .line 7
    check-cast p1, Landroid/os/IBinder;

    .line 8
    .line 9
    check-cast p2, Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/util/List;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    aget-boolean v0, v1, p2

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    aput-boolean p0, v1, p2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
