.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/people/data/DataManager;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/people/data/DataManager;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/people/data/PackageData;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;

    .line 16
    .line 17
    invoke-direct {v1, v0, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/people/data/DataManager;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    .line 29
    .line 30
    check-cast p1, Lcom/android/server/people/data/PackageData;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;

    .line 36
    .line 37
    invoke-direct {v1, v0, p1, p0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/PackageData;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
