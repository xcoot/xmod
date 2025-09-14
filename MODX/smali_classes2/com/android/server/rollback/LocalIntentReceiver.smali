.class public final Lcom/android/server/rollback/LocalIntentReceiver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConsumer:Ljava/util/function/Consumer;

.field public final mLocalSender:Lcom/android/server/rollback/LocalIntentReceiver$1;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/rollback/LocalIntentReceiver$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/rollback/LocalIntentReceiver$1;-><init>(Lcom/android/server/rollback/LocalIntentReceiver;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/rollback/LocalIntentReceiver;->mLocalSender:Lcom/android/server/rollback/LocalIntentReceiver$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/rollback/LocalIntentReceiver;->mConsumer:Ljava/util/function/Consumer;

    .line 12
    .line 13
    return-void
.end method
