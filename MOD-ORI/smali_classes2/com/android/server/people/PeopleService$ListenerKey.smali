.class public final Lcom/android/server/people/PeopleService$ListenerKey;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mShortcutId:Ljava/lang/String;

.field public final mUserId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/people/PeopleService$ListenerKey;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    iget-object p0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    add-int/2addr p0, v1

    .line 21
    return p0
.end method
