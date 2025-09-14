.class public final Lcom/android/server/backup/PeopleBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/backup/PeopleBackupHelper;

    .line 3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "people_conversation_infos"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 12
    iput p1, p0, Lcom/android/server/backup/PeopleBackupHelper;->mUserId:I

    .line 14
    return-void
.end method


# virtual methods
.method public final applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 1

    .line 1
    const-string/jumbo v0, "people_conversation_infos"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "Unexpected restore key "

    .line 12
    const-string p2, "PeopleBackupHelper"

    .line 14
    invoke-static {p0, p1, p2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void

    .line 18
    :cond_0
    const-class p1, Lcom/android/server/people/PeopleServiceInternal;

    .line 20
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/server/people/PeopleServiceInternal;

    .line 26
    iget p0, p0, Lcom/android/server/backup/PeopleBackupHelper;->mUserId:I

    .line 28
    invoke-virtual {p1, p0, p2}, Lcom/android/server/people/PeopleServiceInternal;->restore(I[B)V

    .line 31
    return-void
.end method

.method public final getBackupPayload(Ljava/lang/String;)[B
    .locals 1

    .line 1
    const-string/jumbo v0, "people_conversation_infos"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "Unexpected backup key "

    .line 12
    const-string v0, "PeopleBackupHelper"

    .line 14
    invoke-static {p0, p1, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const/4 p0, 0x0

    .line 18
    new-array p0, p0, [B

    .line 20
    return-object p0

    .line 21
    :cond_0
    const-class p1, Lcom/android/server/people/PeopleServiceInternal;

    .line 23
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/server/people/PeopleServiceInternal;

    .line 29
    iget p0, p0, Lcom/android/server/backup/PeopleBackupHelper;->mUserId:I

    .line 31
    invoke-virtual {p1, p0}, Lcom/android/server/people/PeopleServiceInternal;->getBackupPayload(I)[B

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
