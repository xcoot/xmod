.class public final enum Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;


# instance fields
.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 10
    .line 11
    sget-object v5, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 2
    .line 3
    const-string v4, "ELM"

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const-string v1, "ELM"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    move-object v0, v6

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v6, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 15
    .line 16
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 17
    .line 18
    const-string v11, "KLM"

    .line 19
    .line 20
    const/4 v12, 0x1

    .line 21
    const-string v8, "KLM"

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    const/4 v10, 0x2

    .line 25
    move-object v7, v0

    .line 26
    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 30
    .line 31
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 32
    .line 33
    const-string v5, "DO"

    .line 34
    .line 35
    const/4 v6, 0x2

    .line 36
    const-string v2, "DO"

    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    const/4 v4, 0x3

    .line 40
    move-object v1, v0

    .line 41
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 45
    .line 46
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 47
    .line 48
    const-string v11, "PO"

    .line 49
    .line 50
    const/4 v12, 0x3

    .line 51
    const-string v8, "PO"

    .line 52
    .line 53
    const/4 v9, 0x3

    .line 54
    const/4 v10, 0x4

    .line 55
    move-object v7, v0

    .line 56
    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 60
    .line 61
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 62
    .line 63
    const-string v5, "KES"

    .line 64
    .line 65
    const/4 v6, 0x4

    .line 66
    const-string v2, "KME"

    .line 67
    .line 68
    const/4 v3, 0x4

    .line 69
    const/4 v4, 0x5

    .line 70
    move-object v1, v0

    .line 71
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 75
    .line 76
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 77
    .line 78
    const-string v11, "B2C"

    .line 79
    .line 80
    const/4 v12, 0x5

    .line 81
    const-string v8, "B2C"

    .line 82
    .line 83
    const/4 v9, 0x5

    .line 84
    const/4 v10, 0x6

    .line 85
    move-object v7, v0

    .line 86
    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 90
    .line 91
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->$values()[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 96
    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mValue:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mName:Ljava/lang/String;

    .line 7
    .line 8
    iput p5, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mId:I

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mValue:I

    .line 2
    .line 3
    return p0
.end method
