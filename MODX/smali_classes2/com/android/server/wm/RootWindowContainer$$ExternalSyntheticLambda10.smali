.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;[Z[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;->f$1:[Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;->f$2:[I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;->f$1:[Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;->f$2:[I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/Task;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    .line 13
    aput-boolean v2, v1, v3

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    aget p1, p0, v3

    .line 17
    .line 18
    add-int/2addr p1, v2

    .line 19
    aput p1, p0, v3

    .line 20
    .line 21
    move v2, v3

    .line 22
    :goto_0
    return v2
.end method
