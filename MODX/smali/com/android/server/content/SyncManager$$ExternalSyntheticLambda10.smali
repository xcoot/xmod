.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/content/SyncManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/content/SyncManager;

    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    if-eqz p1, :cond_0

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, ""

    .line 21
    :goto_0
    return-object p0
.end method
