.class public final enum Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

.field public static final enum DREAM_START:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

.field public static final enum DREAM_STOP:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x241

    .line 6
    const-string v3, "DREAM_START"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;-><init>(IILjava/lang/String;)V

    .line 11
    sput-object v0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->DREAM_START:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    .line 13
    new-instance v1, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0x242

    .line 18
    const-string v4, "DREAM_STOP"

    .line 20
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;-><init>(IILjava/lang/String;)V

    .line 23
    sput-object v1, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->DREAM_STOP:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    .line 25
    filled-new-array {v0, v1}, [Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->$VALUES:[Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    .line 31
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p2, p0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->mId:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->$VALUES:[Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->mId:I

    .line 3
    return p0
.end method
