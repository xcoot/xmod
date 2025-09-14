.class public final enum Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

.field public static final enum ON_BOOT_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

.field public static final enum ON_PACKAGE_DATA_CLEARED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

.field public static final enum ON_PACKAGE_REPLACED_OR_REMOVED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

.field public static final enum ON_SETUP_WIZARD_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

.field public static final enum ON_USER_PRESENT:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_BOOT_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_SETUP_WIZARD_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_USER_PRESENT:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_PACKAGE_REPLACED_OR_REMOVED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_PACKAGE_DATA_CLEARED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 2
    .line 3
    const-string v1, "ON_BOOT_COMPLETED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_BOOT_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 12
    .line 13
    const-string v1, "ON_SETUP_WIZARD_COMPLETED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_SETUP_WIZARD_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 22
    .line 23
    const-string v1, "ON_USER_PRESENT"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_USER_PRESENT:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 30
    .line 31
    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 32
    .line 33
    const-string v1, "ON_PACKAGE_REPLACED_OR_REMOVED"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_PACKAGE_REPLACED_OR_REMOVED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 40
    .line 41
    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 42
    .line 43
    const-string v1, "ON_PACKAGE_DATA_CLEARED"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_PACKAGE_DATA_CLEARED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 50
    .line 51
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->$values()[Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->$VALUES:[Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->$VALUES:[Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 8
    .line 9
    return-object v0
.end method
