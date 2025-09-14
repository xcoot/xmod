.class public final enum Lcom/android/server/backup/restore/UnifiedRestoreState;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum INITIAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum RESTORE_FULL:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum RESTORE_KEYVALUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 3
    const-string v1, "INITIAL"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 11
    new-instance v1, Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 13
    const-string v2, "RUNNING_QUEUE"

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 21
    new-instance v2, Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 23
    const-string v3, "RESTORE_KEYVALUE"

    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 31
    new-instance v3, Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 33
    const-string v4, "RESTORE_FULL"

    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v3, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 41
    new-instance v4, Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 43
    const-string v5, "RESTORE_FINISHED"

    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v4, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 51
    new-instance v5, Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 53
    const-string v6, "FINAL"

    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v5, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 61
    filled-new-array/range {v0 .. v5}, [Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->$VALUES:[Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/backup/restore/UnifiedRestoreState;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/backup/restore/UnifiedRestoreState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->$VALUES:[Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/backup/restore/UnifiedRestoreState;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 9
    return-object v0
.end method
