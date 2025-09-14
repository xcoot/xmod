.class public final Lcom/android/server/uri/UriPermission$Snapshot;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final persistedCreateTime:J

.field public final persistedModeFlags:I

.field public final sourcePkg:Ljava/lang/String;

.field public final targetPkg:Ljava/lang/String;

.field public final targetUserId:I

.field public final uri:Lcom/android/server/uri/GrantUri;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriPermission;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/android/server/uri/UriPermission;->targetUserId:I

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    .line 19
    .line 20
    iget v0, p1, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 21
    .line 22
    iput v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    .line 23
    .line 24
    iget-wide v0, p1, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    .line 27
    .line 28
    return-void
.end method
