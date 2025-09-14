.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/people/data/DataManager;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$1:J

    .line 7
    .line 8
    iput p4, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v7, v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/people/data/DataManager;

    .line 3
    .line 4
    iget-wide v2, v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$1:J

    .line 5
    .line 6
    iget v9, v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$2:I

    .line 7
    .line 8
    move-object/from16 v8, p1

    .line 9
    .line 10
    check-cast v8, Lcom/android/server/people/data/PackageData;

    .line 11
    .line 12
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v11, v8, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v12, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v10, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;

    .line 23
    .line 24
    iget v13, v8, Lcom/android/server/people/data/PackageData;->mUserId:I

    .line 25
    .line 26
    move-object v0, v10

    .line 27
    move-object v1, v7

    .line 28
    move-object v4, v11

    .line 29
    move v5, v13

    .line 30
    move-object v6, v12

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/people/data/DataManager;JLjava/lang/String;ILjava/util/List;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v8, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 35
    .line 36
    invoke-virtual {v0, v10}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    iget-object v8, v7, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 46
    .line 47
    iget-object v0, v7, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    const/16 v14, 0x4000

    .line 54
    .line 55
    invoke-virtual/range {v8 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method
