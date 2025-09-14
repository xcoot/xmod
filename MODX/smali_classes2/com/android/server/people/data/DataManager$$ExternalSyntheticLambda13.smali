.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;JLjava/lang/String;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/people/data/DataManager;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$3:I

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$4:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$1:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$3:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$4:Ljava/util/List;

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v5, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v6, 0x4000

    .line 19
    .line 20
    invoke-virtual {p1, v6}, Lcom/android/server/people/data/ConversationInfo;->hasShortcutFlags(I)Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    iget-object v6, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v7, p1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    iget-wide v6, p1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 37
    .line 38
    const-wide/16 v8, 0x0

    .line 39
    .line 40
    cmp-long p1, v6, v8

    .line 41
    .line 42
    if-lez p1, :cond_0

    .line 43
    .line 44
    sub-long/2addr v1, v6

    .line 45
    const-wide/32 v6, 0x337f9800

    .line 46
    .line 47
    .line 48
    cmp-long p1, v1, v6

    .line 49
    .line 50
    if-lez p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, v4, v3, v5}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(ILjava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_0

    .line 57
    .line 58
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method
