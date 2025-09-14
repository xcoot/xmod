.class final enum Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

.field public static final enum DND_ACTIVE_RULES_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

.field public static final enum DND_POLICY_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

.field public static final enum DND_TURNED_OFF:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

.field public static final enum DND_TURNED_ON:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x558

    .line 5
    .line 6
    const-string v3, "DND_TURNED_ON"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;-><init>(IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_TURNED_ON:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0x559

    .line 17
    .line 18
    const-string v4, "DND_TURNED_OFF"

    .line 19
    .line 20
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;-><init>(IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_TURNED_OFF:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const/16 v4, 0x55a

    .line 29
    .line 30
    const-string v5, "DND_POLICY_CHANGED"

    .line 31
    .line 32
    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;-><init>(IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_POLICY_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 36
    .line 37
    new-instance v3, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const/16 v5, 0x55b

    .line 41
    .line 42
    const-string v6, "DND_ACTIVE_RULES_CHANGED"

    .line 43
    .line 44
    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;-><init>(IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_ACTIVE_RULES_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 48
    .line 49
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->$VALUES:[Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->mId:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->$VALUES:[Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->mId:I

    .line 2
    .line 3
    return p0
.end method
