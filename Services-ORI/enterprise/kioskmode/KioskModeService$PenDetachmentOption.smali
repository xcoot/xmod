.class final enum Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

.field public static final enum AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;


# instance fields
.field private final option:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .line 10
    .line 11
    const-string v2, "ACTION_MEMO"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v3, v3, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;-><init>(IILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .line 18
    .line 19
    const-string v3, "AIR_COMMAND"

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-direct {v2, v4, v4, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;-><init>(IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .line 26
    .line 27
    filled-new-array {v0, v1, v2}, [Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->$VALUES:[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->option:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->$VALUES:[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .line 8
    .line 9
    return-object v0
.end method
