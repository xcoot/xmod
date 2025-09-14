.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/people/data/DataManager;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;->f$1:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;->f$1:J

    .line 4
    .line 5
    move-object v5, p1

    .line 6
    check-cast v5, Lcom/android/server/people/data/PackageData;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    if-nez v5, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;

    .line 15
    .line 16
    iget-object p1, v5, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 17
    .line 18
    move-object v0, p0

    .line 19
    move-object v4, p1

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/people/data/DataManager;JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
