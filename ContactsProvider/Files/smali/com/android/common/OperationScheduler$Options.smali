.class public Lcom/android/common/OperationScheduler$Options;
.super Ljava/lang/Object;
.source "OperationScheduler.java"


# instance fields
.field public lu:J

.field public lv:J

.field public lw:J

.field public lx:J

.field public ly:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->lu:J

    .line 43
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/common/OperationScheduler$Options;->lv:J

    .line 46
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/common/OperationScheduler$Options;->lw:J

    .line 49
    iput-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->lx:J

    .line 52
    iput-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->ly:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide v5, 0x408f400000000000L

    .line 56
    const-string v0, "OperationScheduler.Options[backoff=%.1f+%.1f max=%.1f min=%.1f period=%.1f]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/common/OperationScheduler$Options;->lu:J

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/common/OperationScheduler$Options;->lv:J

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/android/common/OperationScheduler$Options;->lw:J

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/android/common/OperationScheduler$Options;->lx:J

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/android/common/OperationScheduler$Options;->ly:J

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
