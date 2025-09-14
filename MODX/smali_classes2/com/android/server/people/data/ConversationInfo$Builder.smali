.class public final Lcom/android/server/people/data/ConversationInfo$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContactPhoneNumber:Ljava/lang/String;

.field public mContactUri:Landroid/net/Uri;

.field public mConversationFlags:I

.field public mCreationTimestamp:J

.field public final mCurrStatuses:Ljava/util/Map;

.field public final mLastEventTimestamp:J

.field public mLocusId:Landroid/content/LocusId;

.field public mNotificationChannelId:Ljava/lang/String;

.field public final mParentNotificationChannelId:Ljava/lang/String;

.field public mShortcutFlags:I

.field public mShortcutId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/ConversationInfo;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    .line 5
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 8
    :goto_0
    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    .line 9
    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    .line 10
    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mParentNotificationChannelId:Ljava/lang/String;

    .line 13
    iget-wide v0, p1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iput-wide v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLastEventTimestamp:J

    .line 14
    iget-wide v0, p1, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iput-wide v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCreationTimestamp:J

    .line 15
    iget v0, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    .line 16
    iget v0, p1, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    .line 17
    iget-object p1, p1, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/server/people/data/ConversationInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/people/data/ConversationInfo;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    .line 20
    .line 21
    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mParentNotificationChannelId:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 34
    .line 35
    iget-wide v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLastEventTimestamp:J

    .line 36
    .line 37
    iput-wide v1, v0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 38
    .line 39
    iget-wide v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCreationTimestamp:J

    .line 40
    .line 41
    iput-wide v1, v0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 42
    .line 43
    iget v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    .line 44
    .line 45
    iput v1, v0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 46
    .line 47
    iget v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    .line 48
    .line 49
    iput v1, v0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    .line 52
    .line 53
    iput-object p0, v0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 54
    .line 55
    return-object v0
.end method

.method public final setConversationFlag(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    .line 4
    .line 5
    or-int/2addr p1, p2

    .line 6
    iput p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget p2, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    .line 10
    .line 11
    not-int p1, p1

    .line 12
    and-int/2addr p1, p2

    .line 13
    iput p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    .line 14
    .line 15
    return-void
.end method
