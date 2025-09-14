.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/net/Uri;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    .line 13
    .line 14
    check-cast p1, Lcom/android/server/people/data/PackageData;

    .line 15
    .line 16
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, v1, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    .line 20
    .line 21
    check-cast v2, Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v1

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v1

    .line 49
    throw p0

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Ljava/util/Set;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Ljava/util/List;

    .line 57
    .line 58
    check-cast p1, Lcom/android/server/people/data/PackageData;

    .line 59
    .line 60
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
