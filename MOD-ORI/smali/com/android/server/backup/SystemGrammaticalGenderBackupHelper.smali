.class public final Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "system_gender"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;->mUserId:I

    .line 13
    .line 14
    const-class p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;->mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 1

    .line 1
    const-string/jumbo v0, "system_gender"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;->mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p0, p0, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;->mUserId:I

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 32
    .line 33
    invoke-virtual {p1, p2, p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->setSystemWideGrammaticalGender(II)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final getBackupPayload(Ljava/lang/String;)[B
    .locals 1

    .line 1
    const-string/jumbo v0, "system_gender"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;->mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p0, p0, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;->mUserId:I

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$menforceCallerPermissions(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getSystemGrammaticalGender(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const/4 p1, 0x4

    .line 30
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    :goto_0
    return-object p0
.end method

.method public final performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/app/backup/BackupDataOutput;->getTransportFlags()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BlobBackupHelper;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
