.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/people/data/DataManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/server/people/data/DataManager;->removeConversations(ILjava/lang/String;Ljava/util/Set;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
